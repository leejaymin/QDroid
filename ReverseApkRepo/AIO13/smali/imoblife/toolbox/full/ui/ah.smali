.class final Limoblife/toolbox/full/ui/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ab;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ab;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/ah;->a:Limoblife/toolbox/full/ui/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
