.class final Lcom/mosaicture/view/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabSettingsActivity;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/TabSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/ai;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    new-instance v0, Lcom/mosaicture/view/ap;

    iget-object v1, p0, Lcom/mosaicture/view/ai;->a:Lcom/mosaicture/view/TabSettingsActivity;

    invoke-direct {v0, v1}, Lcom/mosaicture/view/ap;-><init>(Lcom/mosaicture/view/TabSettingsActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/ap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/view/BaseApp;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/view/BaseApp;->a(Ljava/lang/Boolean;)V

    return-void
.end method
