.class final Lccc71/pmw/lib/dx;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/net/Uri;

.field c:Ljava/lang/String;

.field final synthetic d:Lccc71/pmw/lib/dw;

.field private final synthetic g:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/dw;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    iput p2, p0, Lccc71/pmw/lib/dx;->g:I

    .line 1657
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    .line 1660
    iput-object v0, p0, Lccc71/pmw/lib/dx;->b:Landroid/net/Uri;

    .line 1661
    iput-object v0, p0, Lccc71/pmw/lib/dx;->c:Ljava/lang/String;

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 1666
    iget-object v0, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v0}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1668
    iget v0, p0, Lccc71/pmw/lib/dx;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1672
    iget-object v0, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v0}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    sget v2, Lccc71/pmw/lib/g;->eX:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/dx;->c:Ljava/lang/String;

    .line 1674
    :goto_0
    if-lt v1, v4, :cond_0

    .line 1778
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 1676
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v0}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1678
    iget-object v2, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v2}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v2

    invoke-static {v2, v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 1679
    const-string v3, "process_monitor_widget"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Selected apk "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-object v0, p0, Lccc71/pmw/lib/dx;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nmarket://details?id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/dx;->c:Ljava/lang/String;

    .line 1682
    iget-object v0, p0, Lccc71/pmw/lib/dx;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/dx;->c:Ljava/lang/String;

    .line 1674
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1689
    :cond_1
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 1691
    :goto_2
    if-lt v3, v4, :cond_2

    .line 1742
    iget-object v0, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v0}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 1743
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v4}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/st_share.sts"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1744
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->g()I

    move-result v7

    invoke-direct {v0, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v4, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1746
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->g()I

    move-result v0

    new-array v6, v0, [B

    .line 1748
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1749
    :goto_3
    if-lt v1, v7, :cond_8

    .line 1767
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1769
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/dx;->b:Landroid/net/Uri;

    .line 1770
    iget-object v0, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v0}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->eX:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/dx;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1772
    :catch_0
    move-exception v0

    .line 1774
    const-string v1, "process_monitor_widget"

    const-string v2, "Failed to prepare ZIP file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1693
    :cond_2
    :try_start_1
    iget-object v0, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v0}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1694
    iget-object v2, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v2}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v2

    invoke-static {v2, v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 1696
    iget v2, p0, Lccc71/pmw/lib/dx;->g:I

    packed-switch v2, :pswitch_data_0

    .line 1707
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v6}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v6

    invoke-static {v6}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v6

    invoke-static {v6}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".apk"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1708
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v6}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v6

    invoke-static {v6}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v6

    invoke-static {v6}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/info.txt"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    :pswitch_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1713
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v7}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v7

    invoke-static {v7}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v7

    invoke-static {v7}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 1715
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 1731
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v1

    .line 1732
    :goto_5
    if-lt v2, v7, :cond_6

    .line 1691
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 1701
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v6}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v6

    invoke-static {v6}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v6

    invoke-static {v6}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".apk"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1702
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v6}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v6

    invoke-static {v6}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v6

    invoke-static {v6}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/info.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1717
    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1721
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 1722
    if-eqz v8, :cond_4

    .line 1724
    array-length v9, v8

    move v0, v1

    .line 1725
    :goto_7
    if-lt v0, v9, :cond_5

    .line 1715
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    .line 1726
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1734
    :cond_6
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1736
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    .line 1751
    :cond_8
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1753
    const-string v8, "process_monitor_widget"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Compressing file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->g()I

    move-result v10

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1755
    new-instance v9, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v4, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1759
    :goto_8
    const/4 v0, 0x0

    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->g()I

    move-result v9

    invoke-virtual {v8, v6, v0, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_9

    .line 1763
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 1764
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 1749
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 1761
    :cond_9
    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 1696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/dx;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1801
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v1}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lccc71/pmw/lib/dx;->a:Landroid/app/ProgressDialog;

    .line 1802
    iget-object v0, p0, Lccc71/pmw/lib/dx;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1803
    iget-object v0, p0, Lccc71/pmw/lib/dx;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v1}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->cQ:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1804
    iget-object v0, p0, Lccc71/pmw/lib/dx;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1805
    iget-object v0, p0, Lccc71/pmw/lib/dx;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1807
    invoke-super {p0}, Lccc71/utils/android/a;->a()V

    .line 1808
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/dx;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lccc71/utils/ad;

    invoke-direct {v0}, Lccc71/utils/ad;-><init>()V

    iget-object v0, p0, Lccc71/pmw/lib/dx;->d:Lccc71/pmw/lib/dw;

    invoke-static {v0}, Lccc71/pmw/lib/dw;->a(Lccc71/pmw/lib/dw;)Lccc71/pmw/lib/dv;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dv;->a(Lccc71/pmw/lib/dv;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/dx;->b:Landroid/net/Uri;

    iget-object v2, p0, Lccc71/pmw/lib/dx;->c:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v4, "application/zip"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    sget v4, Lccc71/pmw/lib/g;->eX:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget v1, Lccc71/pmw/lib/g;->eY:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
