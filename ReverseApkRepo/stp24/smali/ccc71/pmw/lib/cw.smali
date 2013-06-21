.class final Lccc71/pmw/lib/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backuplist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cw;->a:Lccc71/pmw/lib/pmw_backuplist;

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1172
    iget-object v0, p0, Lccc71/pmw/lib/cw;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lccc71/pmw/lib/cw;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_backuplist;->registerForContextMenu(Landroid/view/View;)V

    .line 1175
    iget-object v0, p0, Lccc71/pmw/lib/cw;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_backuplist;->openContextMenu(Landroid/view/View;)V

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_2

    .line 1181
    iget-object v0, p0, Lccc71/pmw/lib/cw;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget-object v1, Lccc71/pmw/a/y;->a:Lccc71/pmw/a/y;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Lccc71/pmw/a/y;)V

    goto :goto_0

    .line 1185
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/cw;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v1, p0, Lccc71/pmw/lib/cw;->a:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v0, p0, Lccc71/pmw/lib/cw;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/cw;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1189
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to launch installer for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    iget-object v0, p0, Lccc71/pmw/lib/cw;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
