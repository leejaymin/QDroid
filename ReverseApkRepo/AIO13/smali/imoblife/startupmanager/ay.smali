.class final Limoblife/startupmanager/ay;
.super Landroid/widget/SimpleAdapter;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ax;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ax;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6

    iput-object p1, p0, Limoblife/startupmanager/ay;->a:Limoblife/startupmanager/ax;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

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
