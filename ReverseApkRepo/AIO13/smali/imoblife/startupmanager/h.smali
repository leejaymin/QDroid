.class final Limoblife/startupmanager/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ExitDialog;

.field private final synthetic b:Landroid/app/Dialog;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ExitDialog;Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/h;->a:Limoblife/startupmanager/ExitDialog;

    iput-object p2, p0, Limoblife/startupmanager/h;->b:Landroid/app/Dialog;

    iput-object p3, p0, Limoblife/startupmanager/h;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/h;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    iget-object v0, p0, Limoblife/startupmanager/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
