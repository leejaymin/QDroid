.class public final Lcom/mosaicture/view/ap;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/ap;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Integer;

    sget-object v0, Lcom/mosaicture/a/a;->b:Lcom/mosaicture/g/a;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mosaicture/g/a;->a(I)V

    const/4 v0, 0x0

    return-object v0
.end method
