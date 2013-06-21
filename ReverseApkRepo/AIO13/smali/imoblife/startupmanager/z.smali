.class final Limoblife/startupmanager/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/w;

.field private final synthetic b:Limoblife/startupmanager/j;


# direct methods
.method constructor <init>(Limoblife/startupmanager/w;Limoblife/startupmanager/j;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/z;->a:Limoblife/startupmanager/w;

    iput-object p2, p0, Limoblife/startupmanager/z;->b:Limoblife/startupmanager/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Limoblife/startupmanager/z;->a:Limoblife/startupmanager/w;

    iget-object v1, v0, Limoblife/startupmanager/w;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Limoblife/startupmanager/z;->a:Limoblife/startupmanager/w;

    iget-object v0, v0, Limoblife/startupmanager/w;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string v0, " \u70b9\u51fb\u6309\u94ae"

    const-string v1, "\u70b9\u51fb\u6309\u94ae\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/startupmanager/z;->a:Limoblife/startupmanager/w;

    iget-object v1, p0, Limoblife/startupmanager/z;->b:Limoblife/startupmanager/j;

    invoke-static {v0, v1}, Limoblife/startupmanager/w;->a(Limoblife/startupmanager/w;Limoblife/startupmanager/j;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
