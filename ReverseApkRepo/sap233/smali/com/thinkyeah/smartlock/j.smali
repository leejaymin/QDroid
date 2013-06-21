.class final Lcom/thinkyeah/smartlock/j;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/AddAppActivity;


# direct methods
.method private constructor <init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thinkyeah/smartlock/AddAppActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/j;-><init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    check-cast p1, [[I

    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/AddAppActivity;->a(Lcom/thinkyeah/smartlock/AddAppActivity;)Lcom/thinkyeah/smartlock/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/k;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/thinkyeah/smartlock/AddAppActivity;->a(Lcom/thinkyeah/smartlock/AddAppActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-object v7

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Z

    invoke-static {v0, v1}, Lcom/thinkyeah/smartlock/AddAppActivity;->a(Lcom/thinkyeah/smartlock/AddAppActivity;[Z)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/thinkyeah/smartlock/AddAppActivity;->m:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    iget-object v4, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v4}, Lcom/thinkyeah/smartlock/AddAppActivity;->c(Lcom/thinkyeah/smartlock/AddAppActivity;)[Z

    move-result-object v4

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    iget-object v4, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v4}, Lcom/thinkyeah/smartlock/AddAppActivity;->c(Lcom/thinkyeah/smartlock/AddAppActivity;)[Z

    move-result-object v4

    aput-boolean v2, v4, v1

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    iget-object v5, v5, Lcom/thinkyeah/smartlock/AddAppActivity;->m:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/AddAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->d(Lcom/thinkyeah/smartlock/AddAppActivity;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->e(Lcom/thinkyeah/smartlock/AddAppActivity;)Lcom/thinkyeah/smartlock/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/h;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/j;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->f(Lcom/thinkyeah/smartlock/AddAppActivity;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
