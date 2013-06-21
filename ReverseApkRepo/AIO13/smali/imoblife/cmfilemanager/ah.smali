.class final Limoblife/cmfilemanager/ah;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/InfoActivity;


# direct methods
.method public constructor <init>(Limoblife/cmfilemanager/InfoActivity;Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Limoblife/cmfilemanager/ah;->a:Limoblife/cmfilemanager/InfoActivity;

    const v0, 0x1090003

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
