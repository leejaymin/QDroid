.class final Limoblife/startupmanager/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/BootList;


# direct methods
.method constructor <init>(Limoblife/startupmanager/BootList;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/b;->a:Limoblife/startupmanager/BootList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/b;->a:Limoblife/startupmanager/BootList;

    invoke-virtual {v0}, Limoblife/startupmanager/BootList;->finish()V

    return-void
.end method
