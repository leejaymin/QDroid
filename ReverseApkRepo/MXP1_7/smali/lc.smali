.class public Llc;
.super Ljava/lang/Object;


# static fields
.field public static final 癤욱븳援:Ljava/lang/String;

.field private static 궗:Z


# instance fields
.field private final ㅼ꽑嫄:Landroid/os/Handler;

.field private 弱밧:Llf;

.field private final 먯꽌:Lld;

.field private 쇰뒗:Lle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Loader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llc;->癤욱븳援:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lld;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc;->먯꽌:Lld;

    iput-object p2, p0, Llc;->ㅼ꽑嫄:Landroid/os/Handler;

    return-void
.end method

.method static synthetic ㅼ꽑嫄(Llc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Llc;->ㅼ꽑嫄:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Llc;)Llf;
    .locals 1

    iget-object v0, p0, Llc;->弱밧:Llf;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Llc;IILjava/io/File;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Llc;->먯꽌(IILjava/io/File;I)V

    return-void
.end method

.method static synthetic 癤욱븳援()Z
    .locals 1

    sget-boolean v0, Llc;->궗:Z

    return v0
.end method

.method static synthetic 궗(Llc;)Lle;
    .locals 1

    iget-object v0, p0, Llc;->쇰뒗:Lle;

    return-object v0
.end method

.method private 궗(IILjava/io/File;I)V
    .locals 2

    iget-object v0, p0, Llc;->弱밧:Llf;

    if-nez v0, :cond_0

    new-instance v0, Llf;

    invoke-direct {v0, p0}, Llf;-><init>(Llc;)V

    iput-object v0, p0, Llc;->弱밧:Llf;

    :cond_0
    iget-object v0, p0, Llc;->弱밧:Llf;

    iget-object v0, v0, Llf;->癤욱븳援:Landroid/os/Handler;

    iget-object v1, p0, Llc;->弱밧:Llf;

    iget-object v1, v1, Llf;->癤욱븳援:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic 궗(Z)V
    .locals 0

    sput-boolean p0, Llc;->궗:Z

    return-void
.end method

.method static synthetic 먯꽌(Llc;)Lld;
    .locals 1

    iget-object v0, p0, Llc;->먯꽌:Lld;

    return-object v0
.end method

.method private 먯꽌(IILjava/io/File;I)V
    .locals 2

    iget-object v0, p0, Llc;->쇰뒗:Lle;

    if-nez v0, :cond_0

    new-instance v0, Lle;

    invoke-direct {v0, p0}, Lle;-><init>(Llc;)V

    iput-object v0, p0, Llc;->쇰뒗:Lle;

    :cond_0
    iget-object v0, p0, Llc;->쇰뒗:Lle;

    iget-object v0, v0, Lle;->癤욱븳援:Landroid/os/Handler;

    iget-object v1, p0, Llc;->쇰뒗:Lle;

    iget-object v1, v1, Lle;->癤욱븳援:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public 癤욱븳援(IILjava/io/File;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Llc;->궗(IILjava/io/File;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Llc;->먯꽌(IILjava/io/File;I)V

    goto :goto_0
.end method

.method public 癤욱븳援(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Llc;->弱밧:Llf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llc;->弱밧:Llf;

    invoke-virtual {v0}, Llf;->quit()Z

    :cond_0
    iget-object v0, p0, Llc;->쇰뒗:Lle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llc;->쇰뒗:Lle;

    invoke-virtual {v0}, Lle;->quit()Z

    :cond_1
    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Llc;->弱밧:Llf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llc;->弱밧:Llf;

    invoke-virtual {v0}, Llf;->join()V

    :cond_2
    iget-object v0, p0, Llc;->쇰뒗:Lle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llc;->쇰뒗:Lle;

    invoke-virtual {v0}, Lle;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iput-object v3, p0, Llc;->弱밧:Llf;

    iput-object v3, p0, Llc;->쇰뒗:Lle;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Llc;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
