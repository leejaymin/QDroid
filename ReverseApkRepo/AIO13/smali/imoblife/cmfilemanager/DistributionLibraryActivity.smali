.class public Limoblife/cmfilemanager/DistributionLibraryActivity;
.super Landroid/app/Activity;


# instance fields
.field protected a:Limoblife/cmfilemanager/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Limoblife/cmfilemanager/d;

    invoke-direct {v0, p0}, Limoblife/cmfilemanager/d;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Limoblife/cmfilemanager/DistributionLibraryActivity;->a:Limoblife/cmfilemanager/d;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/DistributionLibraryActivity;->a:Limoblife/cmfilemanager/d;

    invoke-virtual {v0, p1}, Limoblife/cmfilemanager/d;->a(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Limoblife/cmfilemanager/DistributionLibraryActivity;->a:Limoblife/cmfilemanager/d;

    invoke-virtual {v0, p1}, Limoblife/cmfilemanager/d;->a(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Limoblife/cmfilemanager/DistributionLibraryActivity;->a:Limoblife/cmfilemanager/d;

    invoke-virtual {v0, p1}, Limoblife/cmfilemanager/d;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    iget-object v0, p0, Limoblife/cmfilemanager/DistributionLibraryActivity;->a:Limoblife/cmfilemanager/d;

    invoke-virtual {v0, p1, p2}, Limoblife/cmfilemanager/d;->a(ILandroid/app/Dialog;)V

    return-void
.end method
