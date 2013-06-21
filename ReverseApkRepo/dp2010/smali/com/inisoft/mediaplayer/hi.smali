.class public final Lcom/inisoft/mediaplayer/hi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/hj;


# instance fields
.field public a:Z

.field public b:I

.field public c:Lcom/inisoft/mediaplayer/hu;

.field public d:Z

.field public e:Z

.field final synthetic f:Lcom/inisoft/mediaplayer/hd;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/hd;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hi;->f:Lcom/inisoft/mediaplayer/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hi;->d:Z

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hi;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hi;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/inisoft/mediaplayer/hd;ILcom/inisoft/mediaplayer/hu;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hi;->f:Lcom/inisoft/mediaplayer/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hi;->d:Z

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hi;->e:Z

    invoke-direct {p0, p2, p3, v0}, Lcom/inisoft/mediaplayer/hi;->a(ILcom/inisoft/mediaplayer/hu;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/inisoft/mediaplayer/hd;ILcom/inisoft/mediaplayer/hu;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hi;->f:Lcom/inisoft/mediaplayer/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hi;->d:Z

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hi;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/inisoft/mediaplayer/hi;->a(ILcom/inisoft/mediaplayer/hu;Z)V

    return-void
.end method

.method private a(ILcom/inisoft/mediaplayer/hu;Z)V
    .locals 1

    iput-boolean p3, p0, Lcom/inisoft/mediaplayer/hi;->e:Z

    iput p1, p0, Lcom/inisoft/mediaplayer/hi;->b:I

    iput-object p2, p0, Lcom/inisoft/mediaplayer/hi;->c:Lcom/inisoft/mediaplayer/hu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hi;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
