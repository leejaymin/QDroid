.class final Limoblife/startupmanager/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ZCustomizeActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ZCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ak;->a:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ak;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->listViewItem:Limoblife/startupmanager/av;
    invoke-static {v0}, Limoblife/startupmanager/ZCustomizeActivity;->access$4(Limoblife/startupmanager/ZCustomizeActivity;)Limoblife/startupmanager/av;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/startupmanager/av;->a()V

    return-void
.end method
