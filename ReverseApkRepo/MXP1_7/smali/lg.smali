.class public Llg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public ㅼ꽑嫄:I

.field public 弱밧:B

.field public 洹:Landroid/graphics/Bitmap;

.field public final 癤욱븳援:I

.field public final 궗:Ljava/io/File;

.field public 대쫫:B

.field final synthetic 먯껜蹂대떎:Llc;

.field public 먯꽌:I

.field public 몃Ъ:Z

.field public 쇰뒗:B


# direct methods
.method public constructor <init>(Llc;ILjava/io/File;)V
    .locals 0

    iput-object p1, p0, Llg;->먯껜蹂대떎:Llc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Llg;->癤욱븳援:I

    iput-object p3, p0, Llg;->궗:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Llg;->먯껜蹂대떎:Llc;

    invoke-static {v0}, Llc;->癤욱븳援(Llc;)Llf;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llg;->먯껜蹂대떎:Llc;

    invoke-static {v0}, Llc;->궗(Llc;)Lle;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Llg;->먯껜蹂대떎:Llc;

    invoke-static {v0}, Llc;->먯꽌(Llc;)Lld;

    move-result-object v0

    invoke-interface {v0, p0}, Lld;->癤욱븳援(Llg;)V

    goto :goto_0
.end method
