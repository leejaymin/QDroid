.class final Lcom/inisoft/mediaplayer/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/a;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/e;->a:Lcom/inisoft/mediaplayer/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/e;->a:Lcom/inisoft/mediaplayer/b/a;

    add-int/lit8 v1, p2, 0x1e

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/b/a;->d(Lcom/inisoft/mediaplayer/b/a;I)V

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
