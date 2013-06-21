.class final Limoblife/toolbox/full/ui/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AWhitelist;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/AWhitelist;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/dc;->a:Limoblife/toolbox/full/ui/AWhitelist;

    iput p2, p0, Limoblife/toolbox/full/ui/dc;->b:I

    iput-object p3, p0, Limoblife/toolbox/full/ui/dc;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/dc;->a:Limoblife/toolbox/full/ui/AWhitelist;

    iget v1, p0, Limoblife/toolbox/full/ui/dc;->b:I

    iget-object v2, p0, Limoblife/toolbox/full/ui/dc;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Limoblife/toolbox/full/ui/AWhitelist;->a(Limoblife/toolbox/full/ui/AWhitelist;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
