.class public final Lcom/mosaicture/view/ao;
.super Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mosaicture/view/TabSettingsActivity;->a(Z)V

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->e:Lcom/mosaicture/c/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/mosaicture/c/f;->a(Lcom/mosaicture/d/a;Z)V

    return-object v2
.end method
