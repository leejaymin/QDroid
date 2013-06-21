.class final Lcom/inisoft/mediaplayer/fp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/fn;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fp;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fp;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0, p1}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fn;Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fp;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->i(Lcom/inisoft/mediaplayer/fn;)V

    :cond_0
    return-void
.end method
