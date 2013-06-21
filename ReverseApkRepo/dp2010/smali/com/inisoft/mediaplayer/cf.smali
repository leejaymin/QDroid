.class final Lcom/inisoft/mediaplayer/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/by;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/by;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cf;->a:Lcom/inisoft/mediaplayer/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cf;->a:Lcom/inisoft/mediaplayer/by;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cf;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cf;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/by;->h(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inisoft/mediaplayer/by;->a(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
