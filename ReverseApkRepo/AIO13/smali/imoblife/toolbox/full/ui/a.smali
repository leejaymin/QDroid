.class final Limoblife/toolbox/full/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AAbout;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/AAbout;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/a;->a:Limoblife/toolbox/full/ui/AAbout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/a;->a:Limoblife/toolbox/full/ui/AAbout;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/AAbout;->finish()V

    return-void
.end method