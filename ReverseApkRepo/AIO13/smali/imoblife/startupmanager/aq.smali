.class final Limoblife/startupmanager/aq;
.super Limoblife/startupmanager/ZCustomizeActivity$ViewItem;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ZCustomizeActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ZCustomizeActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/aq;->a:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {p0, p1, p2, p3}, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;-><init>(Limoblife/startupmanager/ZCustomizeActivity;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget v0, Limoblife/startupmanager/R$drawable;->dialogbg1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget v0, Limoblife/startupmanager/R$drawable;->dialogbg2:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
