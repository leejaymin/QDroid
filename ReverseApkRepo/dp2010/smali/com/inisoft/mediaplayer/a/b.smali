.class final Lcom/inisoft/mediaplayer/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/a/SplashActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/a/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/a/b;->a:Lcom/inisoft/mediaplayer/a/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/a/b;->a:Lcom/inisoft/mediaplayer/a/SplashActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/a/SplashActivity;->finish()V

    return-void
.end method
