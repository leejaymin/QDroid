.class final Lccc71/pmw/lib/kv;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_recorder;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:J

.field private final synthetic g:I

.field private final synthetic h:Z


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_recorder;Landroid/content/Context;Ljava/lang/String;JIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kv;->a:Lccc71/pmw/lib/pmw_recorder;

    iput-object p2, p0, Lccc71/pmw/lib/kv;->b:Landroid/content/Context;

    iput-object p3, p0, Lccc71/pmw/lib/kv;->c:Ljava/lang/String;

    iput-wide p4, p0, Lccc71/pmw/lib/kv;->d:J

    iput p6, p0, Lccc71/pmw/lib/kv;->g:I

    iput-boolean p7, p0, Lccc71/pmw/lib/kv;->h:Z

    .line 856
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/kv;->a:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->h(Lccc71/pmw/lib/pmw_recorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/kv;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/kv;->a:Lccc71/pmw/lib/pmw_recorder;

    iget-object v1, p0, Lccc71/pmw/lib/kv;->b:Landroid/content/Context;

    iget-object v2, p0, Lccc71/pmw/lib/kv;->c:Ljava/lang/String;

    iget-wide v3, p0, Lccc71/pmw/lib/kv;->d:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iget v4, p0, Lccc71/pmw/lib/kv;->g:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/kv;->d([Ljava/lang/Object;)V

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

    iget-boolean v0, p0, Lccc71/pmw/lib/kv;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/kv;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccc71/pmw/lib/kv;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->eC:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/kv;->c:Ljava/lang/String;

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
