.class final Lcom/inisoft/mediaplayer/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/v;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/v;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/x;->a:Lcom/inisoft/mediaplayer/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
