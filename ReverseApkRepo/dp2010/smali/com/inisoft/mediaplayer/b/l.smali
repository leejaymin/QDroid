.class final Lcom/inisoft/mediaplayer/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/k;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/l;->a:Lcom/inisoft/mediaplayer/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/l;->a:Lcom/inisoft/mediaplayer/b/k;

    add-int/lit8 v1, p2, 0x5

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/b/k;->a(Lcom/inisoft/mediaplayer/b/k;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/l;->a:Lcom/inisoft/mediaplayer/b/k;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/k;->a(Lcom/inisoft/mediaplayer/b/k;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/l;->a:Lcom/inisoft/mediaplayer/b/k;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/b/k;->b(Lcom/inisoft/mediaplayer/b/k;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
