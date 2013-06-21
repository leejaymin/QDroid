.class public final Lcom/inisoft/mediaplayer/ec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/eb;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/MediaPathActivity;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ec;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/inisoft/mediaplayer/ec;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ec;->b:Ljava/lang/String;

    return-object v0
.end method
