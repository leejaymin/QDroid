.class public final Lcom/inisoft/mediaplayer/ea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/eb;


# instance fields
.field public a:Lcom/inisoft/mediaplayer/bp;

.field public b:Z

.field public c:I

.field final synthetic d:Lcom/inisoft/mediaplayer/MediaPathActivity;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Lcom/inisoft/mediaplayer/bp;I)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ea;->d:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/ea;->b:Z

    iput-object p2, p0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iput p3, p0, Lcom/inisoft/mediaplayer/ea;->c:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
