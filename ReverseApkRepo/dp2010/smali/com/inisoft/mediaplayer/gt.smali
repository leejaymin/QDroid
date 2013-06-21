.class public final Lcom/inisoft/mediaplayer/gt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:F


# instance fields
.field private A:Lcom/inisoft/mediaplayer/VobSubtitle;

.field private B:Lcom/inisoft/mediaplayer/VobSubtitleFrame;

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Lcom/inisoft/mediaplayer/hv;

.field private G:J

.field private H:J

.field private I:J

.field private J:Lcom/inisoft/mediaplayer/cp;

.field private K:Lcom/inisoft/mediaplayer/gw;

.field b:Ljava/util/Vector;

.field c:Ljava/util/Vector;

.field d:Lcom/inisoft/mediaplayer/gz;

.field e:Lcom/inisoft/mediaplayer/gz;

.field f:I

.field g:I

.field h:Z

.field i:Ljava/util/Timer;

.field j:Ljava/util/Timer;

.field k:Lcom/inisoft/mediaplayer/gx;

.field l:Lcom/inisoft/mediaplayer/gu;

.field private m:Lcom/inisoft/mediaplayer/hm;

.field private n:Lcom/inisoft/mediaplayer/VideoView;

.field private o:Ljava/lang/String;

.field private p:Lcom/inisoft/mediaplayer/ha;

.field private q:Lcom/inisoft/mediaplayer/ha;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:F

.field private u:Z

.field private v:Lcom/inisoft/mediaplayer/fs;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/inisoft/mediaplayer/gt;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inisoft/mediaplayer/VideoView;Lcom/inisoft/mediaplayer/hm;Lcom/inisoft/mediaplayer/fs;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->n:Lcom/inisoft/mediaplayer/VideoView;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    iput v3, p0, Lcom/inisoft/mediaplayer/gt;->s:I

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/inisoft/mediaplayer/gt;->t:F

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/gt;->u:Z

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/gt;->w:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gt;->h:Z

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->j:Ljava/util/Timer;

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->y:Ljava/lang/String;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->B:Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/gt;->C:Z

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/gt;->D:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/gt;->E:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/gt;->G:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/gt;->H:J

    sget v0, Lcom/inisoft/mediaplayer/ha;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/gt;->I:J

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gt;->z:Landroid/content/Context;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gt;->f()V

    invoke-virtual {p4}, Lcom/inisoft/mediaplayer/fs;->v()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    iput v0, p0, Lcom/inisoft/mediaplayer/gt;->t:F

    iput-object p2, p0, Lcom/inisoft/mediaplayer/gt;->n:Lcom/inisoft/mediaplayer/VideoView;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->setVisibility(I)V

    invoke-virtual {p4}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p4}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    :cond_0
    invoke-virtual {p4}, Lcom/inisoft/mediaplayer/fs;->z()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gt;->h:Z

    invoke-virtual {p4}, Lcom/inisoft/mediaplayer/fs;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/inisoft/mediaplayer/fs;->r()I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/gt;->s:I

    const/4 v0, 0x0

    sput v0, Lcom/inisoft/mediaplayer/gt;->a:F

    invoke-virtual {p4}, Lcom/inisoft/mediaplayer/fs;->w()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gt;->u:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->y:Ljava/lang/String;

    iput-object p4, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/gt;->C:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gt;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gt;->D:Z

    :goto_0
    new-instance v0, Lcom/inisoft/mediaplayer/cp;

    invoke-direct {v0, p4}, Lcom/inisoft/mediaplayer/cp;-><init>(Lcom/inisoft/mediaplayer/fs;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->J:Lcom/inisoft/mediaplayer/cp;

    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/gt;->D:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gt;)J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gt;->G:J

    return-wide v0
.end method

.method private a(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const v2, 0x12d000

    invoke-direct {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    const/16 v2, 0x2000

    new-array v3, v2, [B

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gt;->z:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/inisoft/mediaplayer/hw;->d(Landroid/content/Context;Ljava/lang/String;)La/d/az;

    move-result-object v4

    new-instance v2, La/d/ba;

    invoke-direct {v2, v4}, La/d/ba;-><init>(La/d/az;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    invoke-virtual {v2, v3}, La/d/ba;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-gtz v4, :cond_0

    :try_start_2
    invoke-virtual {v2}, La/d/ba;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    return-object v0

    :cond_0
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v0, v3, v5, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, La/d/ba;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, La/d/ba;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gt;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gt;->E:I

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gt;Lcom/inisoft/mediaplayer/VobSubtitleFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gt;->B:Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inisoft/mediaplayer/gt;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gt;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/gt;->C:Z

    return-void
.end method

.method private a(Lcom/inisoft/mediaplayer/hc;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/ha;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/inisoft/mediaplayer/ha;-><init>(Lcom/inisoft/mediaplayer/hc;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->q:Lcom/inisoft/mediaplayer/ha;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->q:Lcom/inisoft/mediaplayer/ha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->q:Lcom/inisoft/mediaplayer/ha;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ha;->b()Lcom/inisoft/mediaplayer/hc;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->e:Lcom/inisoft/mediaplayer/hc;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->d(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->d(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gt;->x:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/inisoft/mediaplayer/gt;->y:Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->x:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/gw;->a(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->i()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "&nbsp;"

    const-string v1, "<![CDATA[ ]]>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br>"

    const-string v2, "<![CDATA[ ]]><br> "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/hm;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/hm;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->J:Lcom/inisoft/mediaplayer/cp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->J:Lcom/inisoft/mediaplayer/cp;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cp;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/hm;->postInvalidate()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string v0, "<br>"

    const-string v1, "&nbsp;<br>&nbsp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/gt;)J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gt;->I:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 8

    const/4 v0, 0x0

    new-instance v3, Lcom/inisoft/mediaplayer/bx;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->z:Landroid/content/Context;

    invoke-direct {v3, v1}, Lcom/inisoft/mediaplayer/bx;-><init>(Landroid/content/Context;)V

    :try_start_0
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const v1, 0x12d000

    invoke-direct {v2, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    const/16 v1, 0x2000

    new-array v4, v1, [B

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/bx;->a()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inisoft/mediaplayer/bx;->c(Ljava/lang/String;)Lcom/inisoft/mediaplayer/cn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cn;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    const/16 v5, 0x2000

    invoke-virtual {v1, v4, v5}, Lcom/inisoft/mediaplayer/cn;->a([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-gtz v5, :cond_2

    move-object v0, v2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cn;->e()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/bx;->c()V

    :goto_2
    return-object v0

    :cond_2
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v2, v4, v6, v5}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cn;->e()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_4
    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/bx;->c()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_5
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cn;->e()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_6
    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/bx;->c()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_3
.end method

.method private static b([B)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_14

    :try_start_2
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v1, "8859-1"

    invoke-direct {v6, v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_15

    :try_start_3
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v1, "euc-kr"

    invoke-direct {v5, v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_16

    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_17

    :try_start_5
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_18

    move v1, v0

    :goto_0
    const/16 v3, 0x64

    if-lt v1, v3, :cond_2

    :cond_0
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    :goto_2
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    :goto_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10

    :goto_4
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11

    :goto_5
    :try_start_a
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_12

    :goto_6
    :try_start_b
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_13

    :cond_1
    :goto_7
    return v0

    :cond_2
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v9, "8859-1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_19

    move-result-object v9

    :try_start_d
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_19

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    goto :goto_8

    :catch_1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    :goto_9
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v2, :cond_4

    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    :cond_4
    :goto_a
    if-eqz v3, :cond_5

    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    :cond_5
    :goto_b
    if-eqz v5, :cond_6

    :try_start_11
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    :cond_6
    :goto_c
    if-eqz v4, :cond_7

    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    :cond_7
    :goto_d
    if-eqz v7, :cond_8

    :try_start_13
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    :cond_8
    :goto_e
    if-eqz v6, :cond_1

    :try_start_14
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    :goto_f
    if-eqz v3, :cond_9

    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    :cond_9
    :goto_10
    if-eqz v4, :cond_a

    :try_start_16
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    :cond_a
    :goto_11
    if-eqz v6, :cond_b

    :try_start_17
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    :cond_b
    :goto_12
    if-eqz v5, :cond_c

    :try_start_18
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b

    :cond_c
    :goto_13
    if-eqz v8, :cond_d

    :try_start_19
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c

    :cond_d
    :goto_14
    if-eqz v7, :cond_e

    :try_start_1a
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_d

    :cond_e
    :goto_15
    throw v0

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_c

    :catch_6
    move-exception v1

    goto :goto_d

    :catch_7
    move-exception v1

    goto :goto_e

    :catch_8
    move-exception v1

    goto :goto_10

    :catch_9
    move-exception v1

    goto :goto_11

    :catch_a
    move-exception v1

    goto :goto_12

    :catch_b
    move-exception v1

    goto :goto_13

    :catch_c
    move-exception v1

    goto :goto_14

    :catch_d
    move-exception v1

    goto :goto_15

    :catch_e
    move-exception v1

    goto/16 :goto_2

    :catch_f
    move-exception v1

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_4

    :catch_11
    move-exception v1

    goto/16 :goto_5

    :catch_12
    move-exception v1

    goto/16 :goto_6

    :catch_13
    move-exception v1

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v4, v3

    goto :goto_f

    :catchall_5
    move-exception v0

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v3, v2

    goto :goto_f

    :catchall_7
    move-exception v0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_f

    :catch_14
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v8

    goto/16 :goto_9

    :catch_15
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_9

    :catch_16
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_9

    :catch_17
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_9

    :catch_18
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_9

    :catch_19
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_9
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/gt;)J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gt;->H:J

    return-wide v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->B()I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    div-int/lit8 v0, v0, 0x64

    aget-object v0, v1, v0

    goto :goto_0

    :pswitch_1
    rem-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0xa

    aget-object v0, v1, v0

    goto :goto_0

    :pswitch_2
    rem-int/lit8 v0, v0, 0xa

    aget-object v0, v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 11

    const/16 v10, 0xff

    const/16 v9, 0xfe

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const v1, 0x12d000

    invoke-direct {v2, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move v1, v4

    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    move-object v1, v2

    :goto_1
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_0
    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    if-gtz v2, :cond_7

    :cond_1
    :goto_3
    return-object v0

    :cond_2
    :try_start_4
    invoke-virtual {v2, v5}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    add-int/lit8 v5, v1, 0x1

    const v1, 0x12d000

    if-gt v5, v1, :cond_d

    const/16 v1, 0x1000

    if-ne v5, v1, :cond_b

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v6

    const/4 v1, 0x0

    aget-byte v1, v6, v1

    if-ne v1, v10, :cond_3

    const/4 v1, 0x1

    aget-byte v1, v6, v1

    if-eq v1, v9, :cond_4

    :cond_3
    const/4 v1, 0x0

    aget-byte v1, v6, v1

    if-ne v1, v9, :cond_c

    const/4 v1, 0x1

    aget-byte v1, v6, v1

    if-ne v1, v10, :cond_c

    :cond_4
    const/4 v1, 0x2

    :goto_4
    new-instance v7, Ljava/lang/String;

    array-length v8, v6

    invoke-direct {v7, v6, v1, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    invoke-static {v1, v6}, Lcom/inisoft/mediaplayer/ha;->a(Ljava/lang/String;Lcom/inisoft/mediaplayer/hc;)Lcom/inisoft/mediaplayer/hc;

    move-result-object v1

    sget-object v6, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    if-ne v1, v6, :cond_b

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v4, "unexpected end of stream"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v1

    if-nez v1, :cond_a

    :cond_5
    move-object v1, v0

    :goto_6
    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    :cond_7
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v0

    :goto_8
    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_9
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8
    :goto_a
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    :cond_9
    throw v0

    :catch_3
    move-exception v2

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v2

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_5

    :cond_a
    move-object v1, v2

    goto :goto_6

    :cond_b
    move v1, v5

    goto/16 :goto_0

    :cond_c
    move v1, v4

    goto :goto_4

    :cond_d
    move-object v1, v2

    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->n:Lcom/inisoft/mediaplayer/VideoView;

    return-object v0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/ha;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->q:Lcom/inisoft/mediaplayer/ha;

    return-object v0
.end method

.method private e()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".idx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".sub"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/hm;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    return-object v0
.end method

.method private f()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/inisoft/mediaplayer/gx;

    invoke-direct {v0, p0, v1}, Lcom/inisoft/mediaplayer/gx;-><init>(Lcom/inisoft/mediaplayer/gt;B)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->k:Lcom/inisoft/mediaplayer/gx;

    new-instance v0, Lcom/inisoft/mediaplayer/gu;

    invoke-direct {v0, p0, v1}, Lcom/inisoft/mediaplayer/gu;-><init>(Lcom/inisoft/mediaplayer/gt;B)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->l:Lcom/inisoft/mediaplayer/gu;

    return-void
.end method

.method private g()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->k:Lcom/inisoft/mediaplayer/gx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gx;->cancel()Z

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->k:Lcom/inisoft/mediaplayer/gx;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->i:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->j:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->l:Lcom/inisoft/mediaplayer/gu;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gu;->cancel()Z

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->l:Lcom/inisoft/mediaplayer/gu;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->j:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/gt;)V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/gt;->H:J

    return-void
.end method

.method static synthetic h(Lcom/inisoft/mediaplayer/gt;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    return-object v0
.end method

.method private h()Z
    .locals 13

    const/4 v11, 0x3

    const v3, 0xa000

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v4, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v1, "file"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_2
    move v5, v0

    move-object v1, v2

    :goto_1
    if-lt v5, v11, :cond_6

    :goto_2
    sget-object v5, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    if-ne v4, v5, :cond_20

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".SMI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1f

    sget-object v4, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v1

    :goto_3
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v6, v5

    if-lez v6, :cond_3

    new-array v5, v6, [B

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-object v2, v5

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v2

    move-object v6, v4

    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    const-string v2, "Default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v1

    if-eqz v1, :cond_5

    :try_start_5
    new-instance v7, Lb/b/a/c;

    invoke-direct {v7}, Lb/b/a/c;-><init>()V

    move v1, v0

    move v2, v0

    :goto_5
    if-lt v1, v11, :cond_14

    :cond_4
    invoke-virtual {v7}, Lb/b/a/c;->a()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v1

    :try_start_6
    invoke-virtual {v7}, Lb/b/a/c;->c()V

    invoke-virtual {v7}, Lb/b/a/c;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    invoke-virtual {v7}, Lb/b/a/c;->d()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    if-nez v1, :cond_5

    :try_start_7
    array-length v1, v5

    if-ge v3, v1, :cond_16

    move v1, v3

    :goto_7
    invoke-static {v5, v1}, Lcom/inisoft/mediaplayer/c;->a([BI)Ljava/nio/charset/Charset;

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;

    if-ne v6, v2, :cond_19

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    :cond_5
    :goto_8
    if-eqz v5, :cond_0

    new-instance v1, Lcom/inisoft/mediaplayer/ha;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    invoke-direct {v1, v6, v2}, Lcom/inisoft/mediaplayer/ha;-><init>(Lcom/inisoft/mediaplayer/hc;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    invoke-virtual {v1, v5}, Lcom/inisoft/mediaplayer/ha;->a([B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v5}, Lcom/inisoft/mediaplayer/gt;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "smi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v4, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;

    goto/16 :goto_2

    :cond_7
    const-string v8, "srt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v4, Lcom/inisoft/mediaplayer/hc;->c:Lcom/inisoft/mediaplayer/hc;

    goto/16 :goto_2

    :cond_8
    const-string v8, "ass"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v4, Lcom/inisoft/mediaplayer/hc;->d:Lcom/inisoft/mediaplayer/hc;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_9
    if-eqz v1, :cond_1e

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v5, v2

    move-object v6, v4

    goto/16 :goto_4

    :catch_1
    move-exception v1

    move-object v5, v2

    move-object v6, v4

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    :goto_a
    if-eqz v2, :cond_a

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_a
    :goto_b
    :try_start_a
    throw v1

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object v5, v2

    move-object v6, v4

    goto/16 :goto_4

    :cond_b
    move v5, v0

    move-object v1, v2

    :goto_c
    if-lt v5, v11, :cond_c

    :goto_d
    sget-object v5, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    if-ne v4, v5, :cond_1d

    const-string v1, "smb"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".SMI"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v1

    :goto_e
    if-eqz v1, :cond_1d

    sget-object v4, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;

    move-object v12, v1

    move-object v1, v4

    move-object v4, v12

    :goto_f
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v2

    move-object v5, v2

    move-object v6, v1

    goto/16 :goto_4

    :cond_c
    invoke-direct {p0, v5}, Lcom/inisoft/mediaplayer/gt;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v1, "smb"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_11

    const-string v9, "smi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    sget-object v4, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;

    goto :goto_d

    :cond_d
    const-string v1, "ftp"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/gt;->b(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v1

    goto :goto_10

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gt;->c(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v1

    goto :goto_10

    :cond_f
    const-string v9, "srt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    sget-object v4, Lcom/inisoft/mediaplayer/hc;->c:Lcom/inisoft/mediaplayer/hc;

    goto/16 :goto_d

    :cond_10
    const-string v9, "ass"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    sget-object v4, Lcom/inisoft/mediaplayer/hc;->d:Lcom/inisoft/mediaplayer/hc;

    goto/16 :goto_d

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/gt;->o:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".SMI"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gt;->c(Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v1

    goto/16 :goto_e

    :cond_13
    move-object v5, v2

    move-object v6, v1

    goto/16 :goto_4

    :cond_14
    :try_start_b
    array-length v4, v5

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_15

    move v4, v3

    :cond_15
    if-eqz v4, :cond_4

    invoke-virtual {v7, v5, v2, v4}, Lb/b/a/c;->a([BII)V

    invoke-virtual {v7}, Lb/b/a/c;->a()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-result v8

    if-nez v8, :cond_4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_16
    :try_start_c
    array-length v1, v5

    goto/16 :goto_7

    :cond_17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ko_KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v5}, Lcom/inisoft/mediaplayer/gt;->b([B)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "euc-kr"

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    goto/16 :goto_8

    :cond_18
    const-string v1, "utf-8"

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    goto/16 :goto_8

    :cond_19
    sget-object v2, Lcom/inisoft/mediaplayer/hc;->c:Lcom/inisoft/mediaplayer/hc;

    if-eq v6, v2, :cond_1a

    sget-object v2, Lcom/inisoft/mediaplayer/hc;->d:Lcom/inisoft/mediaplayer/hc;

    if-ne v6, v2, :cond_5

    :cond_1a
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    goto/16 :goto_8

    :cond_1b
    invoke-static {v5}, Lcom/inisoft/mediaplayer/gt;->b([B)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "iso8859-1"

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    goto/16 :goto_8

    :cond_1c
    const-string v1, "utf-8"

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_8

    :catch_4
    move-exception v2

    goto/16 :goto_b

    :catch_5
    move-exception v1

    move v1, v0

    goto/16 :goto_6

    :catch_6
    move-exception v2

    goto/16 :goto_6

    :catchall_1
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_a

    :catch_7
    move-exception v5

    goto/16 :goto_9

    :cond_1d
    move-object v12, v1

    move-object v1, v4

    move-object v4, v12

    goto/16 :goto_f

    :cond_1e
    move-object v5, v2

    move-object v6, v4

    goto/16 :goto_4

    :cond_1f
    move-object v5, v1

    goto/16 :goto_3

    :cond_20
    move-object v5, v1

    goto/16 :goto_3
.end method

.method static synthetic i(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VobSubtitle;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    return-object v0
.end method

.method static synthetic j(Lcom/inisoft/mediaplayer/gt;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/gt;->C:Z

    return v0
.end method

.method static synthetic k(Lcom/inisoft/mediaplayer/gt;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/gt;->E:I

    return v0
.end method

.method static synthetic l(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VobSubtitleFrame;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->B:Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    return-object v0
.end method


# virtual methods
.method public final a(Z)F
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/inisoft/mediaplayer/gt;->a:F

    iget v1, p0, Lcom/inisoft/mediaplayer/gt;->t:F

    add-float/2addr v0, v1

    sput v0, Lcom/inisoft/mediaplayer/gt;->a:F

    :goto_0
    sget v0, Lcom/inisoft/mediaplayer/gt;->a:F

    return v0

    :cond_0
    sget v0, Lcom/inisoft/mediaplayer/gt;->a:F

    iget v1, p0, Lcom/inisoft/mediaplayer/gt;->t:F

    sub-float/2addr v0, v1

    sput v0, Lcom/inisoft/mediaplayer/gt;->a:F

    goto :goto_0
.end method

.method public final a()Lcom/inisoft/mediaplayer/hv;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->F:Lcom/inisoft/mediaplayer/hv;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    iput v0, p0, Lcom/inisoft/mediaplayer/gt;->t:F

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/gm;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gt;->g()V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gt;->f()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->J:Lcom/inisoft/mediaplayer/cp;

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/cp;->a(Z)V

    iput v1, p0, Lcom/inisoft/mediaplayer/gt;->f:I

    iput v1, p0, Lcom/inisoft/mediaplayer/gt;->g:I

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/gt;->C:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/gt;->E:I

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->q:Lcom/inisoft/mediaplayer/ha;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/gt;->C:Z

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/hm;->setVisibility(I)V

    iget v0, p1, Lcom/inisoft/mediaplayer/gm;->b:I

    if-ltz v0, :cond_0

    iget-boolean v0, p1, Lcom/inisoft/mediaplayer/gm;->a:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    iget v2, p1, Lcom/inisoft/mediaplayer/gm;->b:I

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/VobSubtitle;->setTrackIndex(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/gw;->a(Z)V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/hm;->d(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->setVisibility(I)V

    :cond_4
    :goto_1
    new-instance v0, Ljava/util/Timer;

    const-string v1, "subtitle"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->i:Ljava/util/Timer;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->i:Ljava/util/Timer;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->k:Lcom/inisoft/mediaplayer/gx;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ha;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->r:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/ha;->a()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/gt;->u:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    iget v2, p1, Lcom/inisoft/mediaplayer/gm;->b:I

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/ha;->a(I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    iget v2, p1, Lcom/inisoft/mediaplayer/gm;->c:I

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/ha;->a(I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->c:Ljava/util/Vector;

    :goto_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/gz;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->d:Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/gt;->f:I

    :cond_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->d(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    invoke-interface {v0, v3}, Lcom/inisoft/mediaplayer/gw;->a(Z)V

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->an()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    iget v2, p1, Lcom/inisoft/mediaplayer/gm;->b:I

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/ha;->b(I)I

    move-result v0

    iput v0, p1, Lcom/inisoft/mediaplayer/gm;->b:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    iget v2, p1, Lcom/inisoft/mediaplayer/gm;->b:I

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/fs;->n(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->n(Z)V

    :cond_9
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    iget v2, p1, Lcom/inisoft/mediaplayer/gm;->b:I

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/ha;->a(I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    goto :goto_2

    :cond_a
    move v0, v1

    move v2, v1

    :goto_3
    iget-object v5, v4, Lcom/inisoft/mediaplayer/hv;->a:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v0, v5, :cond_d

    move v0, v1

    move v2, v1

    :goto_4
    if-eqz v2, :cond_c

    invoke-virtual {v4, v0}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v2

    iget-object v2, v2, Lcom/inisoft/mediaplayer/hu;->c:Ljava/lang/String;

    const-string v3, "SSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/inisoft/mediaplayer/hc;->d:Lcom/inisoft/mediaplayer/hc;

    invoke-virtual {v4, v0}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hu;->e:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/hc;Ljava/lang/String;)V

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->d(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/gw;->a(Z)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v4, v0}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v5

    iget-object v5, v5, Lcom/inisoft/mediaplayer/hu;->b:Ljava/lang/String;

    const-string v6, "Subtitle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, p1, Lcom/inisoft/mediaplayer/gm;->b:I

    if-ne v2, v5, :cond_e

    move v2, v3

    goto :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    invoke-virtual {v4, v0}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v2

    iget-object v2, v2, Lcom/inisoft/mediaplayer/hu;->c:Ljava/lang/String;

    const-string v3, "TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/inisoft/mediaplayer/hc;->c:Lcom/inisoft/mediaplayer/hc;

    invoke-virtual {v4, v0}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hu;->e:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/hc;Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    invoke-virtual {v4, v0}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v2

    iget-object v2, v2, Lcom/inisoft/mediaplayer/hu;->c:Ljava/lang/String;

    const-string v3, "VOBSUB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/inisoft/mediaplayer/hc;->e:Lcom/inisoft/mediaplayer/hc;

    invoke-virtual {v4, v0}, Lcom/inisoft/mediaplayer/hv;->a(I)Lcom/inisoft/mediaplayer/hu;

    move-result-object v0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hu;->e:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/hc;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public final a(Lcom/inisoft/mediaplayer/gw;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    return-void
.end method

.method public final a([B)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->b:Ljava/util/Vector;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/gt;->D:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->j:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const-string v1, "embeded subtitle"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gt;->j:Ljava/util/Timer;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->j:Ljava/util/Timer;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->l:Lcom/inisoft/mediaplayer/gu;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/gt;->G:J

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gt;->G:J

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/gt;->H:J

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->q:Lcom/inisoft/mediaplayer/ha;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->q:Lcom/inisoft/mediaplayer/ha;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ha;->b()Lcom/inisoft/mediaplayer/hc;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->e:Lcom/inisoft/mediaplayer/hc;

    if-ne v0, v1, :cond_2

    :try_start_0
    new-instance v0, Lcom/inisoft/mediaplayer/VobSubtitleFrame;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->s()Z

    move-result v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->r()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/inisoft/mediaplayer/VobSubtitleFrame;-><init>(ZI[B)V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VobSubtitleFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/hm;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->q:Lcom/inisoft/mediaplayer/ha;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/ha;->b([B)Lcom/inisoft/mediaplayer/gz;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gz;->a()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/inisoft/mediaplayer/gt;->I:J

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/inisoft/mediaplayer/gt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object v6, p0, Lcom/inisoft/mediaplayer/gt;->q:Lcom/inisoft/mediaplayer/ha;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->j:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->l:Lcom/inisoft/mediaplayer/gu;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gu;->cancel()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v6, p0, Lcom/inisoft/mediaplayer/gt;->j:Ljava/util/Timer;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gt;->E:I

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->e(I)V

    :goto_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gt;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gt;->w:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->J:Lcom/inisoft/mediaplayer/cp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/cp;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->m:Lcom/inisoft/mediaplayer/hm;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final run()V
    .locals 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/gw;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/gt;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/gt;->D:Z

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/cj;->o()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    if-eqz v2, :cond_9

    :cond_3
    new-instance v2, Lcom/inisoft/mediaplayer/hv;

    invoke-direct {v2}, Lcom/inisoft/mediaplayer/hv;-><init>()V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->F:Lcom/inisoft/mediaplayer/hv;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    if-eqz v0, :cond_4

    new-instance v7, Ljava/util/Vector;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ha;->a()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move v6, v1

    :goto_2
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v6, v0, :cond_7

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->K:Lcom/inisoft/mediaplayer/gw;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/gt;->w:Z

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/gw;->b(Z)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    new-instance v4, Lcom/inisoft/mediaplayer/VobSubtitle;

    invoke-direct {v4}, Lcom/inisoft/mediaplayer/VobSubtitle;-><init>()V

    iput-object v4, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/inisoft/mediaplayer/VobSubtitle;->setDataSource(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/VobSubtitle;->getTrackCount()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gt;->v:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/fs;->r()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/inisoft/mediaplayer/VobSubtitle;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    iput-object v5, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_7
    iget-object v8, p0, Lcom/inisoft/mediaplayer/gt;->F:Lcom/inisoft/mediaplayer/hv;

    new-instance v0, Lcom/inisoft/mediaplayer/hu;

    const-string v2, "Subtitle"

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gt;->p:Lcom/inisoft/mediaplayer/ha;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/ha;->b()Lcom/inisoft/mediaplayer/hc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/hc;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/inisoft/mediaplayer/hu;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/inisoft/mediaplayer/hv;->a(Lcom/inisoft/mediaplayer/hu;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VobSubtitle;->getTrackCount()I

    move-result v7

    move v6, v1

    :goto_4
    if-ge v6, v7, :cond_4

    iget-object v8, p0, Lcom/inisoft/mediaplayer/gt;->F:Lcom/inisoft/mediaplayer/hv;

    new-instance v0, Lcom/inisoft/mediaplayer/hu;

    const-string v2, "Subtitle"

    const-string v3, "VOBSUB"

    iget-object v4, p0, Lcom/inisoft/mediaplayer/gt;->A:Lcom/inisoft/mediaplayer/VobSubtitle;

    invoke-virtual {v4, v6}, Lcom/inisoft/mediaplayer/VobSubtitle;->getLanguage(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/inisoft/mediaplayer/hu;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/inisoft/mediaplayer/hv;->a(Lcom/inisoft/mediaplayer/hu;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    :cond_9
    iput-object v5, p0, Lcom/inisoft/mediaplayer/gt;->F:Lcom/inisoft/mediaplayer/hv;

    goto/16 :goto_3
.end method
