.class public final Lcom/inisoft/mediaplayer/gz;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gz;->b:Ljava/lang/String;

    iput p1, p0, Lcom/inisoft/mediaplayer/gz;->a:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gz;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gz;->b:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/inisoft/mediaplayer/gz;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/gz;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gz;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
