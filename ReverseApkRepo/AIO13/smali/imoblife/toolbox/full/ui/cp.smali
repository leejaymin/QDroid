.class final Limoblife/toolbox/full/ui/cp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ATrash;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ATrash;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/cp;->a:Limoblife/toolbox/full/ui/ATrash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cp;->a:Limoblife/toolbox/full/ui/ATrash;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/ATrash;->finish()V

    return-void
.end method