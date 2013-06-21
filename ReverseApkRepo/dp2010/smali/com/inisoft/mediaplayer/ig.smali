.class final Lcom/inisoft/mediaplayer/ig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/ek;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/VideoView;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ig;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ig;->a:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ig;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->r(Lcom/inisoft/mediaplayer/VideoView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/et;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/inisoft/mediaplayer/et;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;Lcom/inisoft/mediaplayer/et;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x2be

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ig;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->w(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ig;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->w(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ig;->a:Lcom/inisoft/mediaplayer/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;Lcom/inisoft/mediaplayer/et;)V

    goto :goto_0
.end method
