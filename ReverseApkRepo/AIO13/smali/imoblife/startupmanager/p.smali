.class final Limoblife/startupmanager/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/MyActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/MyActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/p;->a:Limoblife/startupmanager/MyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/p;->a:Limoblife/startupmanager/MyActivity;

    invoke-virtual {v0}, Limoblife/startupmanager/MyActivity;->finish()V

    return-void
.end method
