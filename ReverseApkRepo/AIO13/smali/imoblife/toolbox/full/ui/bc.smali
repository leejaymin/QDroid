.class final Limoblife/toolbox/full/ui/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ax;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ax;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/bc;->a:Limoblife/toolbox/full/ui/ax;

    iput p2, p0, Limoblife/toolbox/full/ui/bc;->b:I

    iput-object p3, p0, Limoblife/toolbox/full/ui/bc;->c:Ljava/lang/String;

    iput-object p4, p0, Limoblife/toolbox/full/ui/bc;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/bc;->a:Limoblife/toolbox/full/ui/ax;

    iget v1, p0, Limoblife/toolbox/full/ui/bc;->b:I

    iget-object v2, p0, Limoblife/toolbox/full/ui/bc;->c:Ljava/lang/String;

    iget-object v3, p0, Limoblife/toolbox/full/ui/bc;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Limoblife/toolbox/full/ui/ax;->a(Limoblife/toolbox/full/ui/ax;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/bc;->a:Limoblife/toolbox/full/ui/ax;

    iget-object v1, p0, Limoblife/toolbox/full/ui/bc;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Limoblife/toolbox/full/ui/ax;->a(Limoblife/toolbox/full/ui/ax;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/bc;->a:Limoblife/toolbox/full/ui/ax;

    iget v1, p0, Limoblife/toolbox/full/ui/bc;->b:I

    iget-object v2, p0, Limoblife/toolbox/full/ui/bc;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Limoblife/toolbox/full/ui/ax;->a(Limoblife/toolbox/full/ui/ax;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
