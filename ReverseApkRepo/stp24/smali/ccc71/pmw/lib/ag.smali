.class final Lccc71/pmw/lib/ag;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_analyzer;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_analyzer;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    iput-object p2, p0, Lccc71/pmw/lib/ag;->b:Landroid/content/Intent;

    .line 111
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v1, v2}, Lccc71/utils/android/y;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;Z)V

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;Ljava/io/File;)V

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_analyzer;->q(Lccc71/pmw/lib/pmw_analyzer;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;[Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->r(Lccc71/pmw/lib/pmw_analyzer;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->r(Lccc71/pmw/lib/pmw_analyzer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v1, p0, Lccc71/pmw/lib/ag;->b:Landroid/content/Intent;

    const-string v2, "ccc71.pmw.recording"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->s(Lccc71/pmw/lib/pmw_analyzer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v2, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_analyzer;->s(Lccc71/pmw/lib/pmw_analyzer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_analyzer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->fJ:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->b(Lccc71/pmw/lib/pmw_analyzer;Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_analyzer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->fL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_analyzer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->fK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->d(Lccc71/pmw/lib/pmw_analyzer;Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_analyzer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->fM:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->e(Lccc71/pmw/lib/pmw_analyzer;Ljava/lang/String;)V

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;F)V

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;I)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_recorder;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_analyzer;->a_()V

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ag;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v0, v1}, Lccc71/utils/android/y;->a(Landroid/app/Activity;)V

    return-void
.end method
