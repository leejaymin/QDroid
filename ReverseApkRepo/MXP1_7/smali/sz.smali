.class public Lsz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ㅼ꽑嫄:Z

.field final synthetic 癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;

.field private 궗:I

.field private 먯꽌:I


# direct methods
.method public constructor <init>(Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;IIZ)V
    .locals 0

    iput-object p1, p0, Lsz;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lsz;->궗:I

    iput p3, p0, Lsz;->먯꽌:I

    iput-boolean p4, p0, Lsz;->ㅼ꽑嫄:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lsz;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;

    iget v1, p0, Lsz;->궗:I

    iget v2, p0, Lsz;->먯꽌:I

    iget-boolean v3, p0, Lsz;->ㅼ꽑嫄:Z

    invoke-static {v0, v1, v2, v3}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援(Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;IIZ)V

    iget-object v0, p0, Lsz;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;

    invoke-static {v0, p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援(Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;Lsz;)V

    return-void
.end method

.method public 癤욱븳援(IIZ)V
    .locals 0

    iput p1, p0, Lsz;->궗:I

    iput p2, p0, Lsz;->먯꽌:I

    iput-boolean p3, p0, Lsz;->ㅼ꽑嫄:Z

    return-void
.end method
