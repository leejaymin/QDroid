.class final Lcom/inisoft/mediaplayer/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/a;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/d;->a:Lcom/inisoft/mediaplayer/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/d;->a:Lcom/inisoft/mediaplayer/b/a;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/b/a;->c(Lcom/inisoft/mediaplayer/b/a;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
