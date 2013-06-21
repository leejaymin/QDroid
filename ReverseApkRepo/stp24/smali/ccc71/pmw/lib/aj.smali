.class final Lccc71/pmw/lib/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_analyzer_list;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_analyzer_list;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/aj;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 180
    const v0, 0x408080ff

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 185
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 186
    iget-object v2, p0, Lccc71/pmw/lib/aj;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_analyzer_list;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccc71/pmw/lib/aj;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-virtual {v4}, Lccc71/pmw/lib/pmw_analyzer_list;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".pmw_analyzer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 189
    const-string v0, "ccc71.pmw.recording"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/aj;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_settings;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/lib/aj;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_analyzer_list;->b(Lccc71/pmw/lib/pmw_analyzer_list;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/aj;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_analyzer_list;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/aj;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_analyzer_list;->finish()V

    .line 208
    :goto_1
    return-void

    .line 193
    :cond_1
    :try_start_1
    iget-object v0, p0, Lccc71/pmw/lib/aj;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    invoke-static {v0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lccc71/pmw/lib/aj;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    iget-object v1, p0, Lccc71/pmw/lib/aj;->a:Lccc71/pmw/lib/pmw_analyzer_list;

    sget v2, Lccc71/pmw/lib/g;->cM:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_analyzer_list;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error launching process details:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
