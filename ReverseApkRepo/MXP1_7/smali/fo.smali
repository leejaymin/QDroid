.class public Lfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final 癤욱븳援:Lfm;


# direct methods
.method public constructor <init>(Lfm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfo;->癤욱븳援:Lfm;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lfo;->癤욱븳援:Lfm;

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    instance-of v0, p1, Landroid/app/Dialog;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
