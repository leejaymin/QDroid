.class public final Lgi;
.super Ljava/lang/Object;

# interfaces
.implements Lgd;
.implements Lge;
.implements Ljava/lang/Runnable;


# static fields
.field public static final 癤욱븳援:Ljava/lang/String;


# instance fields
.field private ㅼ꽑嫄:Lgd;

.field private 弱밧:Lcom/mxtech/media/FFPlayer;

.field private 洹:B

.field private final 궗:Landroid/os/Handler;

.field private 꾨뱾:F

.field private 대쫫:I

.field private 뚮Ц:J

.field private 먯껜蹂대떎:F

.field private final 먯꽌:Lgl;

.field private 몃Ъ:Z

.field private 쇰뒗:Lgk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Joint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lgd;Lcom/mxtech/media/FFPlayer;I)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lgi;->궗:Landroid/os/Handler;

    const/4 v0, -0x1

    iput-byte v0, p0, Lgi;->洹:B

    iput v1, p0, Lgi;->먯껜蹂대떎:F

    iput v1, p0, Lgi;->꾨뱾:F

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Secondary player is not provided while mixing is enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating a joint player. 1st="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 2nd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    iput-object p2, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    iput p3, p0, Lgi;->대쫫:I

    invoke-interface {p1, p0}, Lgd;->癤욱븳援(Lge;)V

    if-eqz p2, :cond_2

    new-instance v0, Lgl;

    invoke-direct {v0, p0, v4}, Lgl;-><init>(Lgi;Lgl;)V

    iput-object v0, p0, Lgi;->먯꽌:Lgl;

    iget-object v0, p0, Lgi;->먯꽌:Lgl;

    invoke-virtual {p2, v0}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lge;)V

    iget-object v0, p0, Lgi;->먯꽌:Lgl;

    invoke-virtual {p2, v0}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lfz;)V

    :goto_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0, v3, v3}, Lgd;->setVolume(FF)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-object v4, p0, Lgi;->먯꽌:Lgl;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mxtech/media/FFPlayer;->removeAudioStream()V

    goto :goto_1
.end method

.method static synthetic ㅼ꽑嫄(Lgi;)Lgd;
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    return-object v0
.end method

.method private 寃껋씠()V
    .locals 6

    const/4 v5, -0x1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->ㅼ꽑嫄()I

    move-result v1

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->ㅼ꽑嫄()I

    move-result v0

    if-ne v1, v0, :cond_2

    iget-byte v0, p0, Lgi;->洹:B

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->쇰뒗()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->몃Ъ()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    goto :goto_0

    :cond_2
    sget-object v2, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Initial sync 2nd to 1st. delta="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms 1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-byte v0, p0, Lgi;->洹:B

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->쇰뒗()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-byte v0, p0, Lgi;->洹:B

    :cond_3
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->대쫫()V

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(II)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic 弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;
    .locals 1

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Lgi;)Lgk;
    .locals 1

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Lgi;B)V
    .locals 0

    iput-byte p1, p0, Lgi;->洹:B

    return-void
.end method

.method static synthetic 癤욱븳援(Lgi;I)V
    .locals 0

    iput p1, p0, Lgi;->대쫫:I

    return-void
.end method

.method static synthetic 癤욱븳援(Lgi;J)V
    .locals 0

    iput-wide p1, p0, Lgi;->뚮Ц:J

    return-void
.end method

.method static synthetic 癤욱븳援(Lgi;Lcom/mxtech/media/FFPlayer;)V
    .locals 0

    iput-object p1, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    return-void
.end method

.method static synthetic 癤욱븳援(Lgi;Z)V
    .locals 0

    iput-boolean p1, p0, Lgi;->몃Ъ:Z

    return-void
.end method

.method static synthetic 궗(Lgi;)I
    .locals 1

    iget v0, p0, Lgi;->대쫫:I

    return v0
.end method

.method static synthetic 대쫫(Lgi;)Z
    .locals 1

    iget-boolean v0, p0, Lgi;->몃Ъ:Z

    return v0
.end method

.method private 뚮벏()Z
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v1}, Lgd;->ㅼ꽑嫄()I

    move-result v1

    iget-object v2, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v2}, Lcom/mxtech/media/FFPlayer;->ㅼ꽑嫄()I

    move-result v2

    sub-int v3, v1, v2

    const/16 v4, -0x50

    if-gt v4, v3, :cond_1

    const/16 v4, 0x50

    if-gt v3, v4, :cond_1

    iput-wide v10, p0, Lgi;->뚮Ц:J

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v4, -0x7d0

    if-gt v4, v3, :cond_6

    const/16 v4, 0x7d0

    if-gt v3, v4, :cond_6

    iget v4, p0, Lgi;->대쫫:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    const/16 v4, -0x280

    if-gt v4, v3, :cond_3

    const/16 v4, 0x280

    if-gt v3, v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lgi;->뚮Ц:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_2

    iput-wide v4, p0, Lgi;->뚮Ц:J

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lgi;->뚮Ц:J

    const-wide/16 v8, 0x1388

    add-long/2addr v6, v8

    cmp-long v4, v6, v4

    if-gtz v4, :cond_0

    :cond_3
    iput-wide v10, p0, Lgi;->뚮Ц:J

    if-gez v3, :cond_4

    sget-object v4, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Pause 2nd for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms 1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " 2="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v1}, Lgd;->몃Ъ()V

    iget-object v1, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v1}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    iget-object v1, p0, Lgi;->궗:Landroid/os/Handler;

    neg-int v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iput-byte v0, p0, Lgi;->洹:B

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    sget-object v4, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Pause 1st for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms 1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " 2="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v1}, Lcom/mxtech/media/FFPlayer;->몃Ъ()V

    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v1}, Lgd;->대쫫()V

    iget-object v1, p0, Lgi;->궗:Landroid/os/Handler;

    int-to-long v2, v3

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v2, v1}, Lcom/mxtech/media/FFPlayer;->updateClock(I)V

    goto/16 :goto_0

    :cond_6
    sget-object v4, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reposition(seek) 2nd to sync 1st. delta="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "ms 1="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " 2="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v2}, Lgd;->대쫫()V

    iget-object v2, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v2}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    iget-object v2, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    const/16 v3, 0x2710

    invoke-virtual {v2, v1, v3}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(II)V

    goto :goto_1
.end method

.method static synthetic 먯꽌(Lgi;)B
    .locals 1

    iget-byte v0, p0, Lgi;->洹:B

    return v0
.end method

.method static synthetic 쇰뒗(Lgi;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lgi;->궗:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public duration()I
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->duration()I

    move-result v0

    return v0
.end method

.method public getProcessing()I
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->getProcessing()I

    move-result v0

    return v0
.end method

.method public height()I
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->height()I

    move-result v0

    return v0
.end method

.method public prepareAsync()V
    .locals 2

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->弱밧()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->prepareAsync()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->弱밧()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->prepareAsync()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgi;->궗:Landroid/os/Handler;

    new-instance v1, Lgj;

    invoke-direct {v1, p0}, Lgj;-><init>(Lgi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    const/4 v1, -0x1

    iget-byte v0, p0, Lgi;->洹:B

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget v0, p0, Lgi;->대쫫:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lgi;->뚮벏()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->몃Ъ()V

    :cond_1
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->몃Ъ()V

    sget-object v2, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Restart 1st/2nd After pausing for synching 1="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v3}, Lgd;->ㅼ꽑嫄()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " 2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lgi;->대쫫:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->ㅼ꽑嫄()I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iput-byte v1, p0, Lgi;->洹:B

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-byte v0, p0, Lgi;->洹:B

    if-nez v0, :cond_2

    iget v0, p0, Lgi;->대쫫:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    :cond_5
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->대쫫()V

    goto :goto_2
.end method

.method public setAudioStreamType(I)V
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0, p1}, Lgd;->setAudioStreamType(I)V

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0, p1}, Lcom/mxtech/media/FFPlayer;->setAudioStreamType(I)V

    :cond_0
    return-void
.end method

.method public setProcessing(I)V
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0, p1}, Lgd;->setProcessing(I)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iput p1, p0, Lgi;->먯껜蹂대떎:F

    iput p2, p0, Lgi;->꾨뱾:F

    iget v0, p0, Lgi;->대쫫:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/mxtech/media/FFPlayer;->setVolume(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0, p1, p2}, Lgd;->setVolume(FF)V

    goto :goto_0
.end method

.method public width()I
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->width()I

    move-result v0

    return v0
.end method

.method public ㅼ꽑嫄()I
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->ㅼ꽑嫄()I

    move-result v0

    return v0
.end method

.method public ㅼ꽑嫄(Lgd;)V
    .locals 1

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0}, Lgk;->ㅼ꽑嫄(Lgd;)V

    :cond_0
    return-void
.end method

.method public 弱밧(Lgd;)V
    .locals 1

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0}, Lgk;->弱밧(Lgd;)V

    :cond_0
    return-void
.end method

.method public 弱밧()Z
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->弱밧()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->弱밧()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 洹()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->洹()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->洹()V

    iput-object v2, p0, Lgi;->ㅼ꽑嫄:Lgd;

    :cond_1
    iget-object v0, p0, Lgi;->궗:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lgi;->쇰뒗:Lgk;

    const/4 v0, -0x1

    iput-byte v0, p0, Lgi;->洹:B

    const/4 v0, 0x0

    iput v0, p0, Lgi;->대쫫:I

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v1}, Lgd;->洹()V

    iput-object v2, p0, Lgi;->ㅼ꽑嫄:Lgd;

    :cond_2
    throw v0
.end method

.method public 癤욱븳援()Lcom/mxtech/media/FFPlayer;
    .locals 2

    invoke-virtual {p0}, Lgi;->먯껜蹂대떎()Lgd;

    move-result-object v0

    instance-of v1, v0, Lcom/mxtech/media/FFPlayer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mxtech/media/FFPlayer;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lgi;->꾨뱾()Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    goto :goto_0
.end method

.method public 癤욱븳援(II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Seek to="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preciseTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lgi;->대쫫:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    iget-object v0, p0, Lgi;->궗:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-byte v0, p0, Lgi;->洹:B

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->몃Ъ()V

    iput-byte v3, p0, Lgi;->洹:B

    :cond_0
    :goto_0
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0, p1, p2}, Lgd;->癤욱븳援(II)V

    iput-boolean v4, p0, Lgi;->몃Ъ:Z

    return-void

    :cond_1
    iget-byte v0, p0, Lgi;->洹:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->대쫫()V

    iput-byte v3, p0, Lgi;->洹:B

    goto :goto_0
.end method

.method public 癤욱븳援(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0, p1}, Lgd;->癤욱븳援(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public 癤욱븳援(Lgd;)V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1st seek completed. Pos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lgd;->ㅼ꽑嫄()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lgi;->대쫫:I

    if-eqz v1, :cond_2

    iget-byte v1, p0, Lgi;->洹:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v1}, Lgd;->쇰뒗()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-byte v0, p0, Lgi;->洹:B

    :cond_1
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->대쫫()V

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    iget-object v0, p0, Lgi;->궗:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v1}, Lgd;->ㅼ꽑嫄()I

    move-result v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(II)V

    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lgi;->몃Ъ:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lgi;->몃Ъ:Z

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0}, Lgk;->癤욱븳援(Lgd;)V

    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgi;->뚮Ц:J

    goto :goto_0
.end method

.method public 癤욱븳援(Lgd;I)V
    .locals 1

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0, p2}, Lgk;->癤욱븳援(Lgd;I)V

    :cond_0
    return-void
.end method

.method public 癤욱븳援(Lgd;II)V
    .locals 3

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video size changed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0, p2, p3}, Lgk;->癤욱븳援(Lgd;II)V

    :cond_0
    return-void
.end method

.method public 癤욱븳援(Lgd;Lhg;)V
    .locals 1

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0, p2}, Lgk;->癤욱븳援(Lgd;Lhg;)V

    :cond_0
    return-void
.end method

.method public 癤욱븳援(Lge;)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Lgk;)V
    .locals 0

    iput-object p1, p0, Lgi;->쇰뒗:Lgk;

    return-void
.end method

.method public 癤욱븳援(IZI)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ltz p1, :cond_2

    move v3, v2

    :goto_1
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    :goto_2
    or-int/2addr v0, v3

    iget v3, p0, Lgi;->대쫫:I

    if-eq v3, v0, :cond_0

    iput v0, p0, Lgi;->대쫫:I

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Mix Audio="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Subtitle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lgi;->대쫫:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0, v4, v4}, Lgd;->setVolume(FF)V

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0, p1, v2, p3}, Lcom/mxtech/media/FFPlayer;->changeAudioStream(IZI)Z

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lgi;->먯껜蹂대떎:F

    iget v3, p0, Lgi;->꾨뱾:F

    invoke-virtual {v0, v1, v3}, Lcom/mxtech/media/FFPlayer;->setVolume(FF)V

    :goto_3
    iget v0, p0, Lgi;->대쫫:I

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lgi;->寃껋씠()V

    :goto_4
    move v1, v2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->removeAudioStream()V

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    iget v1, p0, Lgi;->먯껜蹂대떎:F

    iget v3, p0, Lgi;->꾨뱾:F

    invoke-interface {v0, v1, v3}, Lgd;->setVolume(FF)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    goto :goto_4
.end method

.method public 癤욱븳援(Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lgi;->대쫫:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    if-eq v2, p1, :cond_0

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mix Subtitle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget v0, p0, Lgi;->대쫫:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgi;->대쫫:I

    :goto_2
    iget v0, p0, Lgi;->대쫫:I

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lgi;->寃껋씠()V

    :goto_3
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lgi;->대쫫:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgi;->대쫫:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    goto :goto_3
.end method

.method public 궗(Z)I
    .locals 2

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    instance-of v0, v0, Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    check-cast v0, Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->displayWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v1}, Lgd;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mxtech/media/FFPlayer;->calcDisplayWidth(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->width()I

    move-result v0

    goto :goto_0
.end method

.method public 궗()Lgf;
    .locals 1

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->궗()Lgf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->궗()Lgf;

    move-result-object v0

    goto :goto_0
.end method

.method public 궗(Lgd;)V
    .locals 3

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1st prepared. duration="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lgd;->duration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0}, Lgk;->궗(Lgd;)V

    :cond_0
    return-void
.end method

.method public 궗(Lgd;I)V
    .locals 1

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0, p2}, Lgk;->궗(Lgd;I)V

    :cond_0
    return-void
.end method

.method public 궗(II)Z
    .locals 1

    iget v0, p0, Lgi;->대쫫:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lgi;->癤욱븳援(IZI)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 궗(Lgd;II)Z
    .locals 1

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0, p2, p3}, Lgk;->궗(Lgd;II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 꾨뱾()Lcom/mxtech/media/FFPlayer;
    .locals 1

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    return-object v0
.end method

.method public 대쫫()V
    .locals 2

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-byte v0, p0, Lgi;->洹:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iput-byte v0, p0, Lgi;->洹:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->대쫫()V

    iget v0, p0, Lgi;->대쫫:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    goto :goto_0
.end method

.method public 덉쓣()I
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    instance-of v0, v0, Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    check-cast v0, Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->displayHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->height()I

    move-result v0

    goto :goto_0
.end method

.method public 뚮Ц()I
    .locals 1

    iget v0, p0, Lgi;->대쫫:I

    return v0
.end method

.method public 뚮젮議뚮떎怨()Lgd;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v1, v0}, Lgd;->癤욱븳援(Lge;)V

    iget-object v1, p0, Lgi;->ㅼ꽑嫄:Lgd;

    iput-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    const/4 v0, -0x1

    iput-byte v0, p0, Lgi;->洹:B

    const/4 v0, 0x0

    iput v0, p0, Lgi;->대쫫:I

    move-object v0, v1

    goto :goto_0
.end method

.method public 먮()V
    .locals 2

    iget v0, p0, Lgi;->대쫫:I

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lgi;->洹:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->쇰뒗()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->쇰뒗()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lgi;->뚮벏()Z

    goto :goto_0
.end method

.method public 먯껜蹂대떎()Lgd;
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    return-object v0
.end method

.method public 먯꽌()Lgg;
    .locals 1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->먯꽌()Lgg;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->먯꽌()Lgg;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 먯꽌(Lgd;)V
    .locals 2

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    const-string v1, "1st video init failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0}, Lgk;->먯꽌(Lgd;)V

    :cond_0
    return-void
.end method

.method public 먯꽌(Lgd;II)Z
    .locals 3

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1st error: what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->쇰뒗:Lgk;

    invoke-interface {v0, p0, p2, p3}, Lgk;->먯꽌(Lgd;II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 몃Ъ()V
    .locals 2

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-byte v0, p0, Lgi;->洹:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    iput-byte v0, p0, Lgi;->洹:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->몃Ъ()V

    iget v0, p0, Lgi;->대쫫:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->몃Ъ()V

    goto :goto_0
.end method

.method public 붿슧()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lgi;->癤욱븳援()Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->癤욱븳援()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 쇰뒗()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lgi;->洹:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lgi;->ㅼ꽑嫄:Lgd;

    invoke-interface {v0}, Lgd;->쇰뒗()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lgi;->洹:B

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 留먰븷()Lcom/mxtech/media/FFPlayer;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v1, v0}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lge;)V

    iget-object v1, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    iput-object v0, p0, Lgi;->弱밧:Lcom/mxtech/media/FFPlayer;

    const/4 v0, -0x1

    iput-byte v0, p0, Lgi;->洹:B

    const/4 v0, 0x0

    iput v0, p0, Lgi;->대쫫:I

    move-object v0, v1

    goto :goto_0
.end method
