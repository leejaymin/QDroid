.class final Lccc71/bmw/data/a/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Z

.field private final synthetic e:Ljava/util/Date;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/data/a/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lccc71/bmw/data/a/f;->b:Ljava/lang/String;

    iput p3, p0, Lccc71/bmw/data/a/f;->c:I

    iput-boolean p4, p0, Lccc71/bmw/data/a/f;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/bmw/data/a/f;->e:Ljava/util/Date;

    .line 76
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/bmw/data/a/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lccc71/bmw/data/a/f;->b:Ljava/lang/String;

    iget v2, p0, Lccc71/bmw/data/a/f;->c:I

    iget-boolean v3, p0, Lccc71/bmw/data/a/f;->d:Z

    iget-object v4, p0, Lccc71/bmw/data/a/f;->e:Ljava/util/Date;

    invoke-static {v0, v1, v2, v3, v4}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;Ljava/lang/String;IZLjava/util/Date;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/bmw/data/a/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lccc71/bmw/data/a/f;->a:Landroid/content/Context;

    sget v2, Lccc71/bmw/lib/g;->cf:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
