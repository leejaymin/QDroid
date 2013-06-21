.class final Limoblife/toolbox/full/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AAbout;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/AAbout;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/d;->a:Limoblife/toolbox/full/ui/AAbout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const v4, 0x7f070191

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/d;->a:Limoblife/toolbox/full/ui/AAbout;

    const-string v1, ""

    iget-object v2, p0, Limoblife/toolbox/full/ui/d;->a:Limoblife/toolbox/full/ui/AAbout;

    invoke-virtual {v2, v4}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Limoblife/toolbox/full/ui/AAbout;->a(Limoblife/toolbox/full/ui/AAbout;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/d;->a:Limoblife/toolbox/full/ui/AAbout;

    const-string v1, ""

    iget-object v2, p0, Limoblife/toolbox/full/ui/d;->a:Limoblife/toolbox/full/ui/AAbout;

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Limoblife/toolbox/full/ui/d;->a:Limoblife/toolbox/full/ui/AAbout;

    invoke-virtual {v3, v4}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Limoblife/toolbox/full/ui/AAbout;->a(Limoblife/toolbox/full/ui/AAbout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
