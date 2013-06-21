.class final Lccc71/pmw/lib/ab;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lccc71/pmw/lib/at_build;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/at_build;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    iput p2, p0, Lccc71/pmw/lib/ab;->c:I

    .line 411
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    invoke-static {v0}, Lccc71/pmw/lib/at_build;->c(Lccc71/pmw/lib/at_build;)Lccc71/pmw/b/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    invoke-static {v2}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "build.original"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/pmw/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/ab;->a:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    invoke-virtual {v0}, Lccc71/pmw/lib/at_build;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccc71/pmw/lib/ab;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    iget-object v1, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    invoke-virtual {v1}, Lccc71/pmw/lib/at_build;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->dj:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    invoke-static {v0}, Lccc71/pmw/lib/at_build;->c(Lccc71/pmw/lib/at_build;)Lccc71/pmw/b/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    invoke-static {v2}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "build.original"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/pmw/b/a;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    invoke-static {v0, v3}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    iget-object v1, p0, Lccc71/pmw/lib/ab;->b:Lccc71/pmw/lib/at_build;

    invoke-virtual {v1}, Lccc71/pmw/lib/at_build;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lccc71/pmw/lib/ab;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
