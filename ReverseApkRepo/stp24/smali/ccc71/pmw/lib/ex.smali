.class final Lccc71/pmw/lib/ex;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_easy_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    .line 190
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 194
    iget-object v0, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_easy_apps;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lccc71/pmw/b/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 198
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 200
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 204
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 206
    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    .line 208
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_2

    .line 210
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_easy_apps;->a(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_easy_apps;->b(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    sget v1, Lccc71/pmw/lib/d;->jW:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_easy_apps;->a(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_easy_apps;->b(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->c(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_easy_apps;->d(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_easy_apps;->e(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    sget v1, Lccc71/pmw/lib/d;->iO:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_easy_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_easy_apps;->d(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_easy_apps;->e(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->f(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lccc71/pmw/lib/ex;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->c(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
