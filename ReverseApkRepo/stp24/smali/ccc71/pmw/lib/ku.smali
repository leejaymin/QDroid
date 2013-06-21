.class final Lccc71/pmw/lib/ku;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_recorder;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_recorder;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ku;->a:Lccc71/pmw/lib/pmw_recorder;

    iput-boolean p2, p0, Lccc71/pmw/lib/ku;->b:Z

    iput-object p3, p0, Lccc71/pmw/lib/ku;->c:Landroid/content/Context;

    iput-object p4, p0, Lccc71/pmw/lib/ku;->d:Ljava/lang/String;

    .line 788
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ku;->d([Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final varargs synthetic b([Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->b([Ljava/lang/Object;)V

    iget-boolean v0, p0, Lccc71/pmw/lib/ku;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/ku;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/ku;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->eA:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/ku;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
