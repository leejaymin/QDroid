.class final Lcom/mosaicture/zoom/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mosaicture/zoom/l;


# direct methods
.method constructor <init>(Lcom/mosaicture/zoom/l;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/zoom/m;->a:Lcom/mosaicture/zoom/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mosaicture/zoom/m;->a:Lcom/mosaicture/zoom/l;

    sget-object v1, Lcom/mosaicture/zoom/n;->c:Lcom/mosaicture/zoom/n;

    invoke-static {v0, v1}, Lcom/mosaicture/zoom/l;->a(Lcom/mosaicture/zoom/l;Lcom/mosaicture/zoom/n;)V

    iget-object v0, p0, Lcom/mosaicture/zoom/m;->a:Lcom/mosaicture/zoom/l;

    invoke-static {v0}, Lcom/mosaicture/zoom/l;->a(Lcom/mosaicture/zoom/l;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
