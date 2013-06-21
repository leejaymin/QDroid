.class final Lccc71/pmw/lib/o;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/n;

.field private final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/n;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/o;->a:Lccc71/pmw/lib/n;

    iput-object p2, p0, Lccc71/pmw/lib/o;->b:Ljava/io/File;

    .line 182
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "dd if="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lccc71/pmw/lib/o;->b:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " of=/system/build.prop"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    return-object v2
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/o;->a:Lccc71/pmw/lib/n;

    iget-object v0, v0, Lccc71/pmw/lib/n;->a:Lccc71/pmw/lib/m;

    invoke-static {v0}, Lccc71/pmw/lib/m;->a(Lccc71/pmw/lib/m;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/at_build;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/build.prop"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lccc71/pmw/lib/o;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/o;->a:Lccc71/pmw/lib/n;

    iget-object v0, v0, Lccc71/pmw/lib/n;->a:Lccc71/pmw/lib/m;

    invoke-static {v0}, Lccc71/pmw/lib/m;->a(Lccc71/pmw/lib/m;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/o;->a:Lccc71/pmw/lib/n;

    iget-object v1, v1, Lccc71/pmw/lib/n;->a:Lccc71/pmw/lib/m;

    invoke-static {v1}, Lccc71/pmw/lib/m;->a(Lccc71/pmw/lib/m;)Lccc71/pmw/lib/at_build;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->dn:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/at_build;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/o;->a:Lccc71/pmw/lib/n;

    iget-object v0, v0, Lccc71/pmw/lib/n;->a:Lccc71/pmw/lib/m;

    invoke-static {v0}, Lccc71/pmw/lib/m;->a(Lccc71/pmw/lib/m;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/o;->a:Lccc71/pmw/lib/n;

    iget-object v0, v0, Lccc71/pmw/lib/n;->a:Lccc71/pmw/lib/m;

    invoke-static {v0}, Lccc71/pmw/lib/m;->a(Lccc71/pmw/lib/m;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/o;->a:Lccc71/pmw/lib/n;

    iget-object v1, v1, Lccc71/pmw/lib/n;->a:Lccc71/pmw/lib/m;

    invoke-static {v1}, Lccc71/pmw/lib/m;->a(Lccc71/pmw/lib/m;)Lccc71/pmw/lib/at_build;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->dm:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/at_build;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
