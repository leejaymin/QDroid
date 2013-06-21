.class final Lcom/inisoft/mediaplayer/b/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/n;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/u;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/u;->a:Lcom/inisoft/mediaplayer/b/n;

    add-int/lit8 v1, p2, 0xa

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/b/n;->d(Lcom/inisoft/mediaplayer/b/n;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/u;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->h(Lcom/inisoft/mediaplayer/b/n;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/u;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->i(Lcom/inisoft/mediaplayer/b/n;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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
