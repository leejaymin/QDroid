.class public final Limoblife/cmfilemanager/d;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:I

.field c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Limoblife/cmfilemanager/d;->b:I

    iput v0, p0, Limoblife/cmfilemanager/d;->c:I

    iput-object p1, p0, Limoblife/cmfilemanager/d;->a:Landroid/app/Activity;

    iput v1, p0, Limoblife/cmfilemanager/d;->b:I

    iput v1, p0, Limoblife/cmfilemanager/d;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 2

    iget v0, p0, Limoblife/cmfilemanager/d;->c:I

    sub-int v0, p1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Limoblife/cmfilemanager/a;

    iget-object v1, p0, Limoblife/cmfilemanager/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Limoblife/cmfilemanager/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Limoblife/cmfilemanager/ar;

    iget-object v1, p0, Limoblife/cmfilemanager/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Limoblife/cmfilemanager/ar;-><init>(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(ILandroid/app/Dialog;)V
    .locals 1

    iget v0, p0, Limoblife/cmfilemanager/d;->c:I

    sub-int v0, p1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Limoblife/cmfilemanager/d;->a:Landroid/app/Activity;

    invoke-static {v0, p2}, Limoblife/cmfilemanager/a;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/Menu;)V
    .locals 1

    iget v0, p0, Limoblife/cmfilemanager/d;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    iget v0, p0, Limoblife/cmfilemanager/d;->b:I

    add-int/lit8 v0, v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget v2, p0, Limoblife/cmfilemanager/d;->b:I

    sub-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Limoblife/cmfilemanager/d;->a:Landroid/app/Activity;

    iget v2, p0, Limoblife/cmfilemanager/d;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Limoblife/cmfilemanager/d;->a:Landroid/app/Activity;

    iget v2, p0, Limoblife/cmfilemanager/d;->c:I

    add-int/lit8 v2, v2, 0x0

    invoke-static {v1, v2}, Limoblife/cmfilemanager/a;->a(Landroid/app/Activity;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
