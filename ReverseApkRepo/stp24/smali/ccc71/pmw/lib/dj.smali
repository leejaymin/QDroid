.class final Lccc71/pmw/lib/dj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backuplist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    .line 1199
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1203
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 1205
    iget-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backuplist;->b(Lccc71/pmw/lib/pmw_backuplist;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1207
    iget-object v1, v0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1208
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Restored app to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget v2, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 1215
    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v6

    move v4, v5

    .line 1216
    :goto_1
    if-lt v4, v6, :cond_2

    .line 1254
    :cond_0
    :goto_2
    iget-object v1, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v0, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1255
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1256
    return-void

    .line 1210
    :cond_1
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Restored app "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " settings"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1218
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1219
    const-class v7, Landroid/widget/TableRow;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    check-cast v2, Landroid/widget/TableRow;

    .line 1220
    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/widget/TableRow;->getId()I

    move-result v7

    iget-object v8, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_backuplist;->b(Lccc71/pmw/lib/pmw_backuplist;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_7

    iget-object v7, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v7}, Lccc71/pmw/lib/pmw_backuplist;->b(Lccc71/pmw/lib/pmw_backuplist;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/widget/TableRow;->getId()I

    move-result v2

    aget-object v2, v7, v2

    iget-object v7, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1222
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1223
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast v1, Landroid/widget/TextView;

    .line 1224
    :goto_4
    if-eqz v1, :cond_0

    .line 1226
    iget-object v2, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget v3, Lccc71/pmw/lib/g;->dA:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1227
    iget-object v3, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget v4, Lccc71/pmw/lib/g;->cX:I

    invoke-virtual {v3, v4}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1229
    iget-object v4, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_backuplist;->c(Lccc71/pmw/lib/pmw_backuplist;)Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1230
    iget-object v4, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v6, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-virtual {v6}, Lccc71/pmw/lib/pmw_backuplist;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v4, v6}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Landroid/content/pm/PackageManager;)V

    .line 1232
    :cond_3
    iget-object v4, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_backuplist;->c(Lccc71/pmw/lib/pmw_backuplist;)Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v7}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1234
    const v6, -0xff0100

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1235
    if-eqz v4, :cond_6

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " - "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    move-object v2, v3

    .line 1219
    goto/16 :goto_3

    :cond_5
    move-object v1, v3

    .line 1223
    goto/16 :goto_4

    .line 1241
    :cond_6
    iget-object v4, p0, Lccc71/pmw/lib/dj;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget v6, Lccc71/pmw/lib/g;->eo:I

    invoke-virtual {v4, v6}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " - "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1216
    :cond_7
    add-int/lit8 v2, v4, 0x2

    move v4, v2

    goto/16 :goto_1

    .line 1251
    :cond_8
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to restore of app to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
