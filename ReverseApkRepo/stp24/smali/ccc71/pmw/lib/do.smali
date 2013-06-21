.class final Lccc71/pmw/lib/do;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/dm;

.field private final synthetic b:I

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/dm;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/do;->a:Lccc71/pmw/lib/dm;

    iput p2, p0, Lccc71/pmw/lib/do;->b:I

    iput-object p3, p0, Lccc71/pmw/lib/do;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lccc71/pmw/lib/do;->d:Ljava/util/ArrayList;

    .line 1398
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1
    move v1, v2

    :goto_0
    iget v0, p0, Lccc71/pmw/lib/do;->b:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/do;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccc71/pmw/lib/do;->a:Lccc71/pmw/lib/dm;

    invoke-static {v5}, Lccc71/pmw/lib/dm;->a(Lccc71/pmw/lib/dm;)Lccc71/pmw/lib/dl;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_backuplist;->d(Lccc71/pmw/lib/pmw_backuplist;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lccc71/pmw/lib/pmw_backuplist;->a(Ljava/io/File;)Z

    iget-object v3, p0, Lccc71/pmw/lib/do;->a:Lccc71/pmw/lib/dm;

    invoke-static {v3}, Lccc71/pmw/lib/dm;->a(Lccc71/pmw/lib/dm;)Lccc71/pmw/lib/dl;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_backuplist;->f(Lccc71/pmw/lib/pmw_backuplist;)Lccc71/pmw/b/m;

    invoke-static {v0}, Lccc71/pmw/b/m;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/do;->d([Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/do;->a:Lccc71/pmw/lib/dm;

    invoke-static {v0}, Lccc71/pmw/lib/dm;->a(Lccc71/pmw/lib/dm;)Lccc71/pmw/lib/dl;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lccc71/pmw/lib/do;->a:Lccc71/pmw/lib/dm;

    invoke-static {v0}, Lccc71/pmw/lib/dm;->a(Lccc71/pmw/lib/dm;)Lccc71/pmw/lib/dl;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->g(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/do;->a:Lccc71/pmw/lib/dm;

    invoke-static {v0}, Lccc71/pmw/lib/dm;->a(Lccc71/pmw/lib/dm;)Lccc71/pmw/lib/dl;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->h(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/do;->a:Lccc71/pmw/lib/dm;

    invoke-static {v0}, Lccc71/pmw/lib/dm;->a(Lccc71/pmw/lib/dm;)Lccc71/pmw/lib/dl;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/dl;->a(Lccc71/pmw/lib/dl;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_backuplist;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lccc71/pmw/lib/do;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lccc71/pmw/lib/do;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    invoke-virtual {v2, v0}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
